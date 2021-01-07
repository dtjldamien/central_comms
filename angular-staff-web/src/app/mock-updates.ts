import { Update } from './update';

export const UPDATES: Update[] = [
    {
        id: 1,
        title: 'New Title',
        department: 'OHS',
        recipients: 'All Undergraduates',
        typeOfUpdate: 'typeOfUpdate',
        summary: 'Lorem ipsum for summary',
        message: 'Lorem ipsum for message',
        scheduleMessage: new Date(),
        tags: ['tag A', 'tag B'],
        coverImage: 'https://material.angular.io/assets/img/examples/shiba2.jpg',
        followUpActionType: 'link',
        followUpAction: 'https://uci.nus.edu.sg/ohs/',
        isPosted: false
    },
    {
        id: 2,
        title: 'New Summer School',
        department: 'GRO',
        recipients: 'All Undergraduates',
        typeOfUpdate: 'typeOfUpdate',
        summary: 'Lorem ipsum for summary',
        message: 'Lorem ipsum for message',
        scheduleMessage: new Date(),
        tags: ['tag C', 'tag D'],
        coverImage: 'http://nus.edu.sg/gro/images/default-source/home/banner/ggf2021.jpg?sfvrsn=e4daf498_0',
        followUpActionType: 'link',
        followUpAction: 'http://nus.edu.sg/gro/home',
        isPosted: true
    },
    {
        id: 3,
        title: 'Pay school fees',
        department: 'OFN',
        recipients: 'All Undergraduates',
        typeOfUpdate: 'typeOfUpdate',
        summary: 'Lorem ipsum for summary',
        message: 'Lorem ipsum for message',
        scheduleMessage: new Date(),
        tags: ['tag E', 'tag F'],
        coverImage: 'http://www.nus.edu.sg/images/default-source/identity-images/NUS_logo_full-horizontal.jpg',
        followUpActionType: 'link',
        followUpAction: 'http://www.nus.edu.sg/finance/images/students/student-finance-matters.jpg',
        isPosted: false
    },
];
