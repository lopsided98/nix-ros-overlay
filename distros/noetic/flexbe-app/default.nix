
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, actionlib, alsaLib, catkin, curl, flexbe-mirror, flexbe-msgs, flexbe-onboard, flexbe-widget, genpy, nss, rospack, rospy, rostest, rosunit, std-msgs, xorg }:
buildRosPackage {
  pname = "ros-noetic-flexbe-app";
  version = "2.4.1-r1";

  src = fetchurl {
    url = "https://github.com/flexbe/flexbe_app-release/archive/release/noetic/flexbe_app/2.4.1-1.tar.gz";
    name = "2.4.1-1.tar.gz";
    sha256 = "28021ecc0d2542928fa46a9682fd0603bd5b2d57ea61643f34a1bade688b0e54";
  };

  buildType = "catkin";
  buildInputs = [ catkin curl ];
  checkInputs = [ rostest rosunit ];
  propagatedBuildInputs = [ actionlib alsaLib flexbe-mirror flexbe-msgs flexbe-onboard flexbe-widget genpy nss rospack rospy std-msgs xorg.libXScrnSaver ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''flexbe_app provides a user interface (editor + runtime control) for the FlexBE behavior engine.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
