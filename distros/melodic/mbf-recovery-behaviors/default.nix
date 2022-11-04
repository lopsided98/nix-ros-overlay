
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, moveback-recovery }:
buildRosPackage {
  pname = "ros-melodic-mbf-recovery-behaviors";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/uos-gbp/mbf_recovery_behaviors/archive/release/melodic/mbf_recovery_behaviors/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d46c033ea04bf57baed8c42ac931e8c18d2ee24158d6fb4f66e4e195f6ddab5e";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ moveback-recovery ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The mbf_recovery_behaviors package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
