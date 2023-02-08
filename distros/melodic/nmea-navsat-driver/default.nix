
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, nmea-msgs, pythonPackages, roslint, rospy, sensor-msgs }:
buildRosPackage {
  pname = "ros-melodic-nmea-navsat-driver";
  version = "0.5.2-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-drivers-gbp";
        repo = "nmea_navsat_driver-release";
        rev = "release/melodic/nmea_navsat_driver/0.5.2-1";
        sha256 = "sha256-skkGxuATydghcccB13uqHr5ak9d6JTljnmNBO74SXpA=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  checkInputs = [ roslint ];
  propagatedBuildInputs = [ geometry-msgs nmea-msgs pythonPackages.pyserial rospy sensor-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package to parse NMEA strings and publish a very simple GPS message. Does not
    require or use the GPSD deamon.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
