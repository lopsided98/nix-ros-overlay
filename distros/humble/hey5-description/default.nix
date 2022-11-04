
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-auto, ament-lint-auto, ament-lint-common, xacro }:
buildRosPackage {
  pname = "ros-humble-hey5-description";
  version = "3.0.1-r1";

  src = fetchurl {
    url = "https://github.com/pal-gbp/hey5_description-release/archive/release/humble/hey5_description/3.0.1-1.tar.gz";
    name = "3.0.1-1.tar.gz";
    sha256 = "4a6009b987437bb57b48fec8f9fea3d3f784fa485ad9bf732587e971b969dcda";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-auto ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ xacro ];
  nativeBuildInputs = [ ament-cmake-auto ];

  meta = {
    description = ''This package contains the description (mechanical, kinematic, visual,
    etc.) of the Hey5 hand.  The files in this package are parsed and used by
    a variety of other components.  Most users will not interact directly
    with this package.'';
    license = with lib.licenses; [ asl20 ];
  };
}
