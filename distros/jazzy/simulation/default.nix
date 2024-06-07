
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ros-base, ros-gz-bridge, ros-gz-image, ros-gz-interfaces, ros-gz-sim }:
buildRosPackage {
  pname = "ros-jazzy-simulation";
  version = "0.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/jazzy/simulation/0.11.0-1.tar.gz";
    name = "0.11.0-1.tar.gz";
    sha256 = "58733a8c0fce1d8341bc369e430fbe32b811c69eb0cdc7b65003a315a42b5275";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ros-base ros-gz-bridge ros-gz-image ros-gz-interfaces ros-gz-sim ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "A package which extends 'ros_base' and includes simulation packages.";
    license = with lib.licenses; [ asl20 ];
  };
}
