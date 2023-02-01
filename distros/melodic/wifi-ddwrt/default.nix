
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, geometry-msgs, message-generation, message-runtime, nav-msgs, pr2-msgs, pythonPackages, rospy, std-msgs, tf, visualization-msgs }:
buildRosPackage {
  pname = "ros-melodic-wifi-ddwrt";
  version = "0.2.0";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ros-gbp";
        repo = "wifi_ddwrt-release";
        rev = "release/melodic/wifi_ddwrt/0.2.0-0";
        sha256 = "sha256-FCjgIm4TXBxmhJ5FbR3FK0qS5EVdd8mHCjYODGgCXnI=";
      };

  buildType = "catkin";
  buildInputs = [ catkin message-generation ];
  propagatedBuildInputs = [ geometry-msgs message-runtime nav-msgs pr2-msgs pythonPackages.mechanize rospy std-msgs tf visualization-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Access to the DD-WRT wifi'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
