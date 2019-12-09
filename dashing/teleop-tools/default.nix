
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, key-teleop, joy-teleop, teleop-tools-msgs, ament-cmake }:
buildRosPackage {
  pname = "ros-dashing-teleop-tools";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/teleop_tools/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "ded3fce86b0df35113d84809762af3fe0ace5a3cd9035e32fe36511e85b0108a";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ joy-teleop teleop-tools-msgs key-teleop ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''A set of generic teleoperation tools for any robot.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
