
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, desktop, perception, ros-ign-gazebo-demos, simulation }:
buildRosPackage {
  pname = "ros-iron-desktop-full";
  version = "0.10.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/variants-release/archive/release/iron/desktop_full/0.10.0-3.tar.gz";
    name = "0.10.0-3.tar.gz";
    sha256 = "7c93fa25cf3629a76b4863ddeb812604f10ab110992d7338d05496290224022a";
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
