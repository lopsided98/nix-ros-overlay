
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoware-common-msgs, autoware-control-msgs, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-sensing-msgs, autoware-system-msgs, autoware-v2x-msgs, autoware-vehicle-msgs }:
buildRosPackage {
  pname = "ros-rolling-autoware-msgs";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/rolling/autoware_msgs/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "920b0a7982db194ea2279515b8b6f8a0f0dc6ed81c4fba663dd7847082229d08";
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
