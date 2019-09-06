
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rosservice, rqt-py-common }:
buildRosPackage {
  pname = "ros-kinetic-rqt-service-caller";
  version = "0.4.8";

  src = fetchurl {
    url = "https://github.com/ros-gbp/rqt_service_caller-release/archive/release/kinetic/rqt_service_caller/0.4.8-0.tar.gz";
    name = "0.4.8-0.tar.gz";
    sha256 = "61657a9e4a20a6684ffcde345832afc8603bb74c7aedb8cb2079c8a30cb48bf0";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-gui rosservice rqt-py-common ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
