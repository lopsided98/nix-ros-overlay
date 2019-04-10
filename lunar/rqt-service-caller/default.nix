
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py, rqt-gui, catkin, pythonPackages, rosservice, rqt-py-common }:
buildRosPackage {
  pname = "ros-lunar-rqt-service-caller";
  version = "0.4.8";

  src = fetchurl {
    url = https://github.com/ros-gbp/rqt_service_caller-release/archive/release/lunar/rqt_service_caller/0.4.8-0.tar.gz;
    sha256 = "18fcd20687fcba12fd639a3c35c4717d2198116bf6c27bc0c0c1d94c1904b5b6";
  };

  propagatedBuildInputs = [ rqt-gui-py pythonPackages.rospkg rqt-py-common rqt-gui rosservice ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''rqt_service_caller provides a GUI plugin for calling arbitrary services.'';
    #license = lib.licenses.BSD;
  };
}
