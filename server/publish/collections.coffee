# You'll want to replace these functions. They publish the whole
# collection which is problematic after your app grows

Meteor.publish 'posts', ->
	Posts.find()

Meteor.publish 'attachments', ->
	Attachments.find()

Meteor.publish 'manufacturers', ->
	Manufacturers.find()

TAPi18n.publish 'subcategories', ->
	SubCategories.i18nFind()
