
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoware-common-msgs, autoware-control-msgs, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-sensing-msgs, autoware-system-msgs, autoware-v2x-msgs, autoware-vehicle-msgs }:
buildRosPackage {
  pname = "ros-lyrical-autoware-msgs";
  version = "1.11.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/lyrical/autoware_msgs/1.11.0-3.tar.gz";
    name = "1.11.0-3.tar.gz";
    sha256 = "051d7c22bd4b3e78373a341c1fe3039129fc81f4b0bfa0983fce15f83a464b6e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ autoware-common-msgs autoware-control-msgs autoware-localization-msgs autoware-map-msgs autoware-perception-msgs autoware-planning-msgs autoware-sensing-msgs autoware-system-msgs autoware-v2x-msgs autoware-vehicle-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Meta package for the autoware_msgs packages";
    license = with lib.licenses; [ asl20 ];
  };
}
