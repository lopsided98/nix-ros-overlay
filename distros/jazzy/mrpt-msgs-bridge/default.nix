
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mrpt-msgs, mrpt2, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-msgs-bridge";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/jazzy/mrpt_msgs_bridge/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "9dda3a58cc01d5087a7030458fabd2576a48f6cf298a29b370f18cbff6476a96";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros-environment ];
  propagatedBuildInputs = [ ament-lint-auto ament-lint-common geometry-msgs mrpt-msgs mrpt2 tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "C++ library to convert between custom mrpt_msgs messages and native MRPT classes";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
