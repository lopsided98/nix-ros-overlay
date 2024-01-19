
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-ign-gazebo-demos, simulation }:
buildRosPackage {
  pname = "ros-rolling-desktop-full";
  version = "0.10.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/rolling/desktop_full/0.10.0-2.tar.gz";
    name = "0.10.0-2.tar.gz";
    sha256 = "e533f4332faa2ffac158eb4bb7337306ffe9f203404e39dbf7f0caa043c18a1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ desktop perception ros-ign-gazebo-demos simulation ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Provides a &quot;batteries included&quot; experience to novice users.'';
    license = with lib.licenses; [ asl20 ];
  };
}
