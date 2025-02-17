
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-editor-assets";
  version = "1.9.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/jazzy/rmf_traffic_editor_assets/1.9.2-1.tar.gz";
    name = "1.9.2-1.tar.gz";
    sha256 = "7f3c6e1fd6bdab25a1df7c8e7cad3ab1edf133595070597474b6fb3276966c7a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Assets for use with traffic_editor.";
    license = with lib.licenses; [ asl20 ];
  };
}
