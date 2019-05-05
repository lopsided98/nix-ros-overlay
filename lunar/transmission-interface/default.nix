
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, hardware-interface, pluginlib, cmake-modules, catkin, tinyxml, resource-retriever, roscpp, rosunit }:
buildRosPackage {
  pname = "ros-lunar-transmission-interface";
  version = "0.13.3";

  src = fetchurl {
    url = https://github.com/ros-gbp/ros_control-release/archive/release/lunar/transmission_interface/0.13.3-0.tar.gz;
    sha256 = "222b706df7e42fe63bdfac5ae3ca910771faf7d3350bd0ce0c9a43f33b13e202";
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
