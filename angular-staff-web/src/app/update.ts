export class Update {
  id: number;
  title: String;
  department: string;
  recipients: string;
  typeOfUpdate: string;
  summary: string;
  message: string;
  scheduleMessage: Date;
  tags: string[];
  coverImage: string;
  followUpActionType: string;
  followUpAction: string;
  isPosted: boolean;

  constructor(
    title: string,
    department: string,
    recipients: string,
    typeOfUpdate: string,
    summary: string,
    message: string,
    scheduleMessage: Date,
    tags: string[],
    coverImage: string,
    followUpActionType: string,
    followUpAction: string
  ) {
    this.title = title;
    this.department = department;
    this.recipients = recipients;
    this.typeOfUpdate = typeOfUpdate;
    this.summary = summary;
    this.message = message;
    this.scheduleMessage = scheduleMessage;
    this.tags = tags;
    this.coverImage = coverImage;
    this.followUpActionType = followUpActionType;
    this.followUpAction = followUpAction;
    this.isPosted = false;
  }
}
