
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nmea-msgs, python3Packages, roslint, rospy, sensor-msgs, tf }:
buildRosPackage {
  pname = "ros-noetic-nmea-navsat-driver";
  version = "0.6.1-r2";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "nmea_navsat_driver-release";
        rev = "release/noetic/nmea_navsat_driver/0.6.1-2";
        sha256 = "sha256-/li7w2Z1iEkcxRjcFUw+vUuUIsoWdC0kRnhRTyNk31Y=";
      };

  buildType = "catkin";
  buildInputs = [ catkin python3Packages.catkin-pkg ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs python3Packages.pyserial rospy sensor-msgs tf ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
