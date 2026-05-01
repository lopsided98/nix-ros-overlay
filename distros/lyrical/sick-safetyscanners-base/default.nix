
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake }:
buildRosPackage {
  pname = "ros-lyrical-sick-safetyscanners-base";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sick_safetyscanners_base-release/archive/release/lyrical/sick_safetyscanners_base/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "b0b4119b1d948661c24b5b0574b74732bcc1cd1dd9905a79e585752446d6f21e";
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
