
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, qt5, roscpp, rqt-gui, rqt-gui-cpp, rsm-msgs, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-melodic-rsm-rqt-plugins";
  version = "1.2.1-r1";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "MarcoStb1993";
        repo = "robot_statemachine-release";
        rev = "release/melodic/rsm_rqt_plugins/1.2.1-1";
        sha256 = "sha256-7riSEPckluVRSDaGBivKtvZ7SNbHoJFx+pbkzkJ1w5g=";
      };

  buildType = "catkin";
  buildInputs = [ catkin qt5.qtbase ];
  propagatedBuildInputs = [ cmake-modules roscpp rqt-gui rqt-gui-cpp rsm-msgs std-msgs std-srvs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rsm_rqt_plugins package includes the Robot
		Statemachine GUI plugin for rqt'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
