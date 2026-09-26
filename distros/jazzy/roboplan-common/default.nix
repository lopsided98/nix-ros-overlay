
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-python, python3 }:
buildRosPackage {
  pname = "ros-jazzy-roboplan-common";
  version = "0.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/roboplan-release/archive/release/jazzy/roboplan_common/0.7.0-1.tar.gz";
    name = "0.7.0-1.tar.gz";
    sha256 = "b6501041e41e605595a7e1041a290d826b21f825420d8abbbb578b9b219cfcb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-python python3 ];
  nativeBuildInputs = [ ament-cmake ament-cmake-python ];

  meta = {
    description = "Shared runtime support for RoboPlan Python packages.";
    license = with lib.licenses; [ mit ];
  };
}
