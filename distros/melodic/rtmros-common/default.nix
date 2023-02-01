
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, hrpsys-ros-bridge, hrpsys-tools, openrtm-ros-bridge, openrtm-tools, rosnode-rtc, rtmbuild }:
buildRosPackage {
  pname = "ros-melodic-rtmros-common";
  version = "1.4.3-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "tork-a";
        repo = "rtmros_common-release";
        rev = "release/melodic/rtmros_common/1.4.3-1";
        sha256 = "sha256-FlSHKHIw1YYNTrz+0Mz5fyeFV/FtMhrBq4VKudMHX48=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ hrpsys-ros-bridge hrpsys-tools openrtm-ros-bridge openrtm-tools rosnode-rtc rtmbuild ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A package suite that provides all the capabilities for
    the ROS users to connect to the robots that run on
    <a href="http://www.openrtm.org/openrtm/en/content/what-rt-middleware-0">RT Middleware</a>
    or RTM-based controllers.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
