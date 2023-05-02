
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, tuw-airskin-msgs, tuw-geometry-msgs, tuw-multi-robot-msgs, tuw-nav-msgs, tuw-object-msgs }:
buildRosPackage {
  pname = "ros-humble-tuw-msgs";
  version = "0.0.15-r3";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/humble/tuw_msgs/0.0.15-3.tar.gz";
    name = "0.0.15-3.tar.gz";
    sha256 = "cb781c588bee83c19659879008785dad042bc3748c02d5fa145627f1a61a3539";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ tuw-airskin-msgs tuw-geometry-msgs tuw-multi-robot-msgs tuw-nav-msgs tuw-object-msgs ];

  meta = {
    description = ''The tuw_msgs meta package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
