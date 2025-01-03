
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-jazzy-slider-publisher";
  version = "2.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/jazzy/slider_publisher/2.3.1-3.tar.gz";
    name = "2.3.1-3.tar.gz";
    sha256 = "b6c5142e8627b28c879d34f7bdfda631addcb44ac2c503e42fe377593716bb0a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.";
    license = with lib.licenses; [ mit ];
  };
}
