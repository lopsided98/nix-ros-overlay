
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoware-common-msgs, autoware-control-msgs, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-sensing-msgs, autoware-system-msgs, autoware-v2x-msgs, autoware-vehicle-msgs }:
buildRosPackage {
  pname = "ros-kilted-autoware-msgs";
  version = "1.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/kilted/autoware_msgs/1.7.0-1.tar.gz";
    name = "1.7.0-1.tar.gz";
    sha256 = "fc814ddf7f07bd4303990d30913676a74fdf2db5efcd7d3c37e7d72477ae2085";
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
