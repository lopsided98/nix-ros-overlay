
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gtest, recorder-msgs, rosbag-storage, roscpp, roslint, rostest, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-rosbag-cloud-recorders";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/rosbag_cloud_recorders/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "7558cdb87a1dc7a56a0dc4eaeedc550724cdb293a0b56a7e5a44a707adcb8e9a";
  };

  buildType = "catkin";
  buildInputs = [ catkin roslint ];
  checkInputs = [ gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs aws-common aws-ros1-common boost file-uploader-msgs recorder-msgs rosbag-storage roscpp topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with nodes that facilitate the recording of rosbag files'';
    license = with lib.licenses; [ asl20 ];
  };
}
