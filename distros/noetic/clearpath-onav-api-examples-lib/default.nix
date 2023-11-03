
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, clearpath-msgs, geometry-msgs, nav-msgs, python3Packages, rospy, sensor-msgs, std-msgs, wireless-msgs }:
buildRosPackage {
  pname = "ros-noetic-clearpath-onav-api-examples-lib";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_onav_examples-release/archive/release/noetic/clearpath_onav_api_examples_lib/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "811a1e17ff73542c8353c16a349a19c192d62c89d9b8a926637b06c36c1d666f";
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
