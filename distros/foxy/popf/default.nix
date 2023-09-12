
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, bison, cbc, clp, flex, rclcpp }:
buildRosPackage {
  pname = "ros-foxy-popf";
  version = "0.0.12-r1";

  src = fetchurl {
    url = "https://github.com/fmrico/popf-release/archive/release/foxy/popf/0.0.12-1.tar.gz";
    name = "0.0.12-1.tar.gz";
    sha256 = "b9582ab82e79d30c4678b7f64967e8e544ac4b3dc62cb8f1b643674b287fb6ca";
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
