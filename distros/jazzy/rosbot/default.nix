
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbot-controller, rosbot-description, rosbot-hardware-interfaces, rosbot-joy, rosbot-localization, rosbot-moveit, rosbot-utils }:
buildRosPackage {
  pname = "ros-jazzy-rosbot";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "1b39fefd69a8d017dc8dc267df1fcb55f2b9a4dc9375a7bba9761b89bd6b9603";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rosbot-controller rosbot-description rosbot-hardware-interfaces rosbot-joy rosbot-localization rosbot-moveit rosbot-utils ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package that contains all packages of ROSbot Series";
    license = with lib.licenses; [ asl20 ];
  };
}
