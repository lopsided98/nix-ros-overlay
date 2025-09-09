
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-kilted-rmf-traffic-editor-assets";
  version = "1.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rmf_traffic_editor-release/archive/release/kilted/rmf_traffic_editor_assets/1.12.0-1.tar.gz";
    name = "1.12.0-1.tar.gz";
    sha256 = "1e1783e73bb5763ed4bb1d0e255af9f3addd5aa8acf978818f3ba8769d97ee3f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Assets for use with traffic_editor.";
    license = with lib.licenses; [ asl20 ];
  };
}
