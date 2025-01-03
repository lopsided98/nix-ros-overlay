
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-rmf-traffic-editor-assets";
  version = "1.9.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/jazzy/rmf_traffic_editor_assets/1.9.1-1.tar.gz";
    name = "1.9.1-1.tar.gz";
    sha256 = "002a18ae0adcf1385dc4c77af8a8832951be0ad20e4eef308728d3768301aaba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Assets for use with traffic_editor.";
    license = with lib.licenses; [ asl20 ];
  };
}
