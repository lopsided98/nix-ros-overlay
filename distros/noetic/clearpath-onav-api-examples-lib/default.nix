
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-msgs, geometry-msgs, nav-msgs, python3Packages, rospy, sensor-msgs, std-msgs, wireless-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-onav-api-examples-lib";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/clearpath_onav_api_examples_lib/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "3161e11971770161efcde1a54bc1a96540e4b555020464cc29fcf46394e32384";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ clearpath-msgs geometry-msgs nav-msgs python3Packages.pyproj rospy sensor-msgs std-msgs wireless-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Examples library to show how to use CPR OutdoorNav API'';
    license = with lib.licenses; [ "Proprietary" ];
  };
}
