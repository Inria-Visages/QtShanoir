/*
 * QtShanoirTreeWidget.h
 *
 *  Created on: 6 janv. 2011
 *      Author: aabadie
 */

#ifndef QTSHANOIRTREEWIDGET_H_
#define QTSHANOIRTREEWIDGET_H_

#include <QtGui>
#include "ui_qtshanoirtreewidget.h"

class QTreeWidgetItem;
class QtShanoirTreeWidgetPrivate;

class QtShanoirTreeWidget : public QWidget, public Ui::QtShanoirTree
{
    Q_OBJECT
    public:
        QtShanoirTreeWidget(QWidget * parent = 0);

    signals:
        void
        mrExamQuery(QString);
        void
        datasetQuery(QString, QString);
        void
        id(int);

    public slots:
        void
        itemDoubleClicked(QTreeWidgetItem* item, int column);
        void
        itemClicked(QTreeWidgetItem* item, int column);
        void
        contextExportMenu(const QPoint point);
        void
        parseAcquisition(QString xmlserial);
        void
        parseStudy(QString xmlserial);
        void
        parseMrExamination(QString xmlserial);

    private:
        void
        initConnections();
        QtShanoirTreeWidgetPrivate * d;
};

#endif /* QTSHANOIRTREEWIDGET_H_ */