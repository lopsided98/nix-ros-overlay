
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosservice, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-service-caller";
  version = "0.4.9-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_service_caller-release/archive/release/noetic/rqt_service_caller/0.4.9-1.tar.gz";
    name = "0.4.9-1.tar.gz";
    sha256 = "42275c8b360494f911db00704bab8e2a33d27c31773c71618746db37c329a7e0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ python3Packages.rospkg rosservice rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
