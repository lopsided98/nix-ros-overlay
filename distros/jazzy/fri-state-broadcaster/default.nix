
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, kuka-driver-interfaces, kuka-drivers-core, pluginlib }:
buildRosPackage {
  pname = "ros-jazzy-fri-state-broadcaster";
  version = "2.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/kuka_drivers-release/archive/release/jazzy/fri_state_broadcaster/2.0.0-1.tar.gz";
    name = "2.0.0-1.tar.gz";
    sha256 = "63689b2a147d3d820f49d1ef15e0ee59bbe797279bcf89a61af8558a83eb35c7";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface kuka-driver-interfaces kuka-drivers-core pluginlib ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster for FRI state";
    license = with lib.licenses; [ asl20 ];
  };
}
