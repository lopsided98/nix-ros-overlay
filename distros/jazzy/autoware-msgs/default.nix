
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, autoware-common-msgs, autoware-control-msgs, autoware-localization-msgs, autoware-map-msgs, autoware-perception-msgs, autoware-planning-msgs, autoware-sensing-msgs, autoware-system-msgs, autoware-v2x-msgs, autoware-vehicle-msgs }:
buildRosPackage {
  pname = "ros-jazzy-autoware-msgs";
  version = "1.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/autoware_msgs-release/archive/release/jazzy/autoware_msgs/1.11.0-1.tar.gz";
    name = "1.11.0-1.tar.gz";
    sha256 = "123deed447b3b5621545be54debda5c0ad2a788e1e7c6da64e8dad01307e949f";
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
