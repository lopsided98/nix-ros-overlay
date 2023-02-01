
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, actionlib-msgs, aws-common, aws-ros1-common, boost, catkin, file-uploader-msgs, gtest, recorder-msgs, rosbag-storage, roscpp, roslint, rostest, topic-tools, xmlrpcpp }:
buildRosPackage {
  pname = "ros-melodic-rosbag-cloud-recorders";
  version = "1.0.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "aws-gbp";
        repo = "rosbag_uploader-release";
        rev = "release/melodic/rosbag_cloud_recorders/1.0.1-1";
        sha256 = "sha256-CJsXGvthcbLrBJbEwJliBY0Ck0Yo3qr50BYMHDK0an4=";
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
