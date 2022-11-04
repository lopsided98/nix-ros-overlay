
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, open-manipulator-p-control-gui, open-manipulator-p-controller, open-manipulator-p-description, open-manipulator-p-libs, open-manipulator-p-teleop }:
buildRosPackage {
  pname = "ros-melodic-open-manipulator-p";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ROBOTIS-GIT-release/open_manipulator_p-release/archive/release/melodic/open_manipulator_p/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "9a055910654a549879cf1d79fffd710f5270b6eca844c6299e802655ff851b49";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ open-manipulator-p-control-gui open-manipulator-p-controller open-manipulator-p-description open-manipulator-p-libs open-manipulator-p-teleop ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for OpenMANIPULATOR-P'';
    license = with lib.licenses; [ asl20 ];
  };
}
