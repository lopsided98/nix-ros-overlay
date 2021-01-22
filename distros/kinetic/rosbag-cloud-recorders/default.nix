
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gmock, gtest, recorder-msgs, rosbag-storage, roscpp, roslint, rostest, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-kinetic-rosbag-cloud-recorders";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/aws-gbp/rosbag_uploader-release/archive/release/kinetic/rosbag_cloud_recorders/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d9796e231633401431a52fe4979967edce06413b7200864bd04a8b9375293923";
  };

  buildType = "catkin";
  buildInputs = [ roslint ];
  checkInputs = [ gmock gtest rostest ];
  propagatedBuildInputs = [ actionlib actionlib-msgs aws-common aws-ros1-common boost file-uploader-msgs recorder-msgs rosbag-storage roscpp topic-tools xmlrpcpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package with nodes that facilitate the recording of rosbag files'';
    license = with lib.licenses; [ asl20 ];
  };
}
