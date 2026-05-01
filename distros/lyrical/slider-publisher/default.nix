
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rqt-gui-py }:
buildRosPackage {
  pname = "ros-lyrical-slider-publisher";
  version = "2.4.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/lyrical/slider_publisher/2.4.3-3.tar.gz";
    name = "2.4.3-3.tar.gz";
    sha256 = "27c114ff6714cff1bf2dba03c6cd62482767999bc7fd6315db243c48649e392c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.";
    license = with lib.licenses; [ mit ];
  };
}
