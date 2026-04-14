
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, eigen, python3, python3Packages }:
buildRosPackage {
  pname = "ros-jazzy-toppra";
  version = "0.6.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/toppra-release/archive/release/jazzy/toppra/0.6.6-1.tar.gz";
    name = "0.6.6-1.tar.gz";
    sha256 = "7e8ec9b64f059ec6b7f238bed61034c584cb1674d7f4cf4915460a11e9abae13";
  };

  buildType = "catkin";
  buildInputs = [ ament-cmake ament-cmake-python python3 python3Packages.pybind11 ];
  propagatedBuildInputs = [ eigen ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Time-Optimal Path Parameterization";
    license = with lib.licenses; [ mit ];
  };
}
