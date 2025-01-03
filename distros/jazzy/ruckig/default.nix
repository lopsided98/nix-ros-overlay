
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-ruckig";
  version = "0.9.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ruckig-release/archive/release/jazzy/ruckig/0.9.2-5.tar.gz";
    name = "0.9.2-5.tar.gz";
    sha256 = "3344474476e106f6d20af51cacf01a08e166abed32f82b0e10ecbd33e9e1f210";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Instantaneous Motion Generation for Robots and Machines.";
    license = with lib.licenses; [ mit ];
  };
}
