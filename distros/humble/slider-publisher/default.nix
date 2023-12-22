
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, python3Packages, rqt-gui-py }:
buildRosPackage {
  pname = "ros-humble-slider-publisher";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/slider_publisher-release/archive/release/humble/slider_publisher/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "b752c961ef1f1a8367f95e7beca23600ad67b88030313917495d324034399aef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ python3Packages.numpy python3Packages.scipy rqt-gui-py ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''This packages proposes a slider-based publisher node similar to the joint_state_publisher, but that can publish any type of message or call services.'';
    license = with lib.licenses; [ mit ];
  };
}
