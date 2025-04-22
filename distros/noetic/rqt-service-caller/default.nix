
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, python3Packages, rosservice, rqt-gui, rqt-gui-py, rqt-py-common }:
buildRosPackage {
  pname = "ros-noetic-rqt-service-caller";
  version = "0.4.11-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_service_caller-release/archive/release/noetic/rqt_service_caller/0.4.11-1.tar.gz";
    name = "0.4.11-1.tar.gz";
    sha256 = "79dcc49d59bbe8c79564675bb8d1ec97c46b5f265066d62de99c6af3a9121ac6";
  };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.setuptools ];
  propagatedBuildInputs = [ python3Packages.rospkg rosservice rqt-gui rqt-gui-py rqt-py-common ];
  nativeBuildInputs = [ catkin python3Packages.setuptools ];

  meta = {
    description = "rqt_service_caller provides a GUI plugin for calling arbitrary services.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
