
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-p-control-gui, open-manipulator-p-controller, open-manipulator-p-description, open-manipulator-p-libs, open-manipulator-p-teleop }:
buildRosPackage {
  pname = "ros-kinetic-open-manipulator-p";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/kinetic/open_manipulator_p/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "d4bcf8af9958dd4b7fcf0f5177ce6c9a41dede923caecbee1a639d98ba3eb5ea";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ open-manipulator-p-control-gui open-manipulator-p-controller open-manipulator-p-description open-manipulator-p-libs open-manipulator-p-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for OpenMANIPULATOR-P'';
    license = with lib.licenses; [ asl20 ];
  };
}
