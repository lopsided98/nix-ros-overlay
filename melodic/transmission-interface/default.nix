
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, cmake-modules, catkin, tinyxml, resource-retriever, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-melodic-transmission-interface";
  version = "0.15.1";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/melodic/transmission_interface/0.15.1-0.tar.gz;
    sha256 = "6b28074919478b6422588385850f0450d788ad06829adca29ae5cf2cac798692";
  };

  buildInputs = [ hardware-interface cmake-modules pluginlib tinyxml roscpp ];
  checkInputs = [ rosunit resource-retriever ];
  propagatedBuildInputs = [ tinyxml roscpp pluginlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Transmission Interface.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
