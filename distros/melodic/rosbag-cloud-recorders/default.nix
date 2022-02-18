
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gtest, recorder-msgs, rosbag-storage, roscpp, roslint, rostest, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-rosbag-cloud-recorders";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/rosbag_cloud_recorders/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "35540e67e87bbd85c8311535c8b585de9736b7fb2e640e7b45dcd6d802de098c";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs aws-common aws-ros1-common boost file-uploader-msgs recorder-msgs rosbag-storage roscpp topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with nodes that facilitate the recording of rosbag files'';
    license = with lib.licenses; [ asl20 ];
  };
}
