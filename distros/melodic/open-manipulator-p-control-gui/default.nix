
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake-modules, eigen, open-manipulator-msgs, qt5, robotis-manipulator, roscpp, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p-control-gui";
  version = "1.0.0-r5";

  src = let
      fetchFromGithub = (builtins.import (builtins.fetchTarball ({ url = "https://github.com/NixOS/nixpkgs/archive/aa0e8072a57e879073cee969a780e586dbe57997.tar.gz"; })) ({})).fetchFromGitHub;
    in
      fetchFromGithub {
        owner = "ROBOTIS-GIT-release";
        repo = "open_manipulator_p-release";
        rev = "release/melodic/open_manipulator_p_control_gui/1.0.0-5";
        sha256 = "sha256-S457zhCOzFuByZO7ptpJa/tGSrT6hitMJHSTAJUqFvQ=";
      };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cmake-modules eigen open-manipulator-msgs qt5.qtbase robotis-manipulator roscpp sensor-msgs std-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Package for OpenMANIPULATOR-P Control GUI'';
    license = with lib.licenses; [ asl20 ];
  };
}
