
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, message-generation, geometry-msgs, std-msgs, actionlib, catkin, actionlib-msgs, power-msgs, message-runtime }:
buildRosPackage {
  pname = "ros-melodic-fetch-driver-msgs";
  version = "1.1.1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/fetch_msgs-release/archive/release/melodic/fetch_driver_msgs/1.1.1-0.tar.gz";
    name = "1.1.1-0.tar.gz";
    sha256 = "aa88a178c8b721288077bbbb32c4bd4ca3b36e3b2cbda1535320326140d82ec5";
  };

  buildType = "catkin";
  buildInputs = [ geometry-msgs std-msgs actionlib actionlib-msgs power-msgs message-generation ];
  propagatedBuildInputs = [ geometry-msgs std-msgs actionlib actionlib-msgs power-msgs message-runtime ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Messages for the fetch_drivers package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
