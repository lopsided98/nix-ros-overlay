
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-kilted-sick-safetyscanners-base";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/kilted/sick_safetyscanners_base/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "3d3b3fe9a5136518863518a034cf82a710cae35f025f7a081e8d7c81235258bd";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Provides an Interface to read the sensor output of a SICK
  Safety Scanner";
    license = with lib.licenses; [ "ALv2" ];
  };
}
