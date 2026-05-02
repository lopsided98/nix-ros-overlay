
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-rolling-sick-safetyscanners-base";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/rolling/sick_safetyscanners_base/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "539a3aadc93b38a5ef48d9aff5a2b1fb52864f9666b071d230ac3ef9863a9cc8";
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
