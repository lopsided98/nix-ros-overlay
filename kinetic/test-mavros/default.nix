
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-extras, cmake-modules, control-toolbox, catkin, mavros, tf2-ros, angles, std-msgs, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-test-mavros";
  version = "0.29.2";

  src = fetchurl {
    url = https://github.com/mavlink/mavros-release/archive/release/kinetic/test_mavros/0.29.2-0.tar.gz;
    sha256 = "fe5f73dbb5ff335f494bc7285c568f669775a401c0054cbfcd406a1a8607a350";
  };

  propagatedBuildInputs = [ mavros-extras control-toolbox mavros tf2-ros eigen std-msgs eigen-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ mavros-extras cmake-modules control-toolbox mavros catkin tf2-ros angles std-msgs eigen-conversions roscpp geometry-msgs eigen ];

  meta = {
    description = ''Tests for MAVROS package'';
    #license = lib.licenses.BSD;
  };
}
