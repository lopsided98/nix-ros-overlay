
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, eigen-conversions, moveit-commander, moveit-core, moveit-msgs, pilz-msgs }:
buildRosPackage {
  pname = "ros-melodic-pilz-industrial-motion-testutils";
  version = "0.6.0-r1";

  src = fetchurl {
    url = "https://github.com/PilzDE/pilz_common-release/archive/release/melodic/pilz_industrial_motion_testutils/0.6.0-1.tar.gz";
    name = "0.6.0-1.tar.gz";
    sha256 = "68e505b56ef064d3714e5ad8a5a63321b6dc1fcc49230e218f6a656fba70cd10";
  };

  buildType = "catkin";
  buildInputs = [ catkin eigen-conversions ];
  propagatedBuildInputs = [ moveit-commander moveit-core moveit-msgs pilz-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Helper scripts and functionality to test industrial motion generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
