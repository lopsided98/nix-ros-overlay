
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-kilted-sick-safetyscanners-base";
  version = "1.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/kilted/sick_safetyscanners_base/1.0.4-1.tar.gz";
    name = "1.0.4-1.tar.gz";
    sha256 = "862506b8425154bcea7d41b40cf510f241bae895d1c662c90d8aaa81c41cdb0f";
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
