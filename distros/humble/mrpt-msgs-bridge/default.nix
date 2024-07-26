
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, geometry-msgs, mrpt-msgs, mrpt2, ros-environment, tf2 }:
buildRosPackage {
  pname = "ros-humble-mrpt-msgs-bridge";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/humble/mrpt_msgs_bridge/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "e71dfb3ebfcbeea3622f9e6c23edf40c6179aa5e0af7f36765048111a265a6fa";
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
