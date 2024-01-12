
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-humble-popf";
  version = "0.0.14-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/popf-release/archive/release/humble/popf/0.0.14-1.tar.gz";
    name = "0.0.14-1.tar.gz";
    sha256 = "4cad4794d0fbae076b8fc20677b85e1153f03072d21c740221c6eed3ddab42ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ bison cbc clp flex rclcpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''The POPF package'';
    license = with lib.licenses; [ "GPL-2.0-only" ];
  };
}
