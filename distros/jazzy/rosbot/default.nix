
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosbot-controller, rosbot-description, rosbot-hardware-interfaces, rosbot-joy, rosbot-localization, rosbot-moveit, rosbot-utils }:
buildRosPackage {
  pname = "ros-jazzy-rosbot";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbot_ros-release/archive/release/jazzy/rosbot/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "03771a8378b25220e986946d366b123f37e5d36eb391a030316438e9a4a6c88d";
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
