
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-slider-publisher";
  version = "2.1.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/humble/slider_publisher/2.1.1-1.tar.gz";
    name = "2.1.1-1.tar.gz";
    sha256 = "421a65128bc85c2abbd629a055f6b4a4c03901aa55f4a1f180e9bf0fcd60a26e";
  };

  buildType = "ament_python";
  propagatedBuildInputs = [ rqt-gui-py ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message.'';
    license = with lib.licenses; [ mit ];
  };
}
