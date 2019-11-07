
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, mavros-extras, cmake-modules, control-toolbox, mavros, catkin, tf2-ros, angles, std-msgs, eigen-conversions, roscpp, geometry-msgs, eigen }:
buildRosPackage {
  pname = "ros-kinetic-test-mavros";
  version = "0.33.0-r1";

  src = fetchurl {
    url = "https://github.com/mavlink/mavros-release/archive/release/kinetic/test_mavros/0.33.0-1.tar.gz";
    name = "0.33.0-1.tar.gz";
    sha256 = "39adda610f5b993a92ebed34d5edba7ab40ca3473397b7c5ad21f6fdfcbc0305";
  };

  buildType = "catkin";
  buildInputs = [ mavros-extras cmake-modules control-toolbox mavros tf2-ros eigen std-msgs angles eigen-conversions roscpp geometry-msgs ];
  propagatedBuildInputs = [ mavros-extras control-toolbox mavros tf2-ros eigen std-msgs eigen-conversions roscpp geometry-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Tests for MAVROS package'';
    license = with lib.licenses; [ bsdOriginal gpl3 lgpl2 ];
  };
}
